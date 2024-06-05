import ProjectDescription

public extension TargetScript {
    static let NeedleRunScript = TargetScript.pre(
        script: """
        if test -d "/opt/homebrew/bin/"; then
            PATH="/opt/homebrew/bin/:${PATH}"
        fi

        export PATH

        if which needle > /dev/null; then
            needle generate Sources/Application/NeedleGenerated.swift ../
        else
            echo "warning: Needle not installed, plz run 'brew install needle'"
        fi
        """,
        name: "NeedleRunScript"
    )

    static let NeedleShell = TargetScript.pre(
        path: .relativeToRoot("Scripts/NeedleRunScript.sh"),
        name: "NeedleShell"
    )
}
