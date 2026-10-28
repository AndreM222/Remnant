#!/bin/bash

echo "🔧 Setting up Remnant development environment..."

# Detect OS
OS="${uname}"
PACKAGES="SwiftLint, xcbeautify, and SwiftFormat"

if [[ "$OS" == "Darwin" ]] then
    echo "🍎 MacOS detected"

    # Check Homebrew
    if ! command -v brew &> /dev/null then
        echo "Installing Homebrew..."
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    echo "Installing ${PACKAGES}..."
    brew install swiftlint swiftformat xcbeautify

elif [[ "OS" == "Linux" ]] then
    echo "🐧 Linux detected"

    echo "Please install ${PACKAGES} manually for Linux"
fi

echo "✅ Setup Completed"
