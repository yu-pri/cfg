# Export a function without printing it to stdout
function _exportFunctionQuietly() {
    fn=$1

    export -f $fn >/dev/null
}

# =============================================================================
# Add a global command search path
function addPath() {
    p=$1
    export PATH="${PATH}:${p}"
}

_exportFunctionQuietly addPath
# =============================================================================

# Check that a command/function exists in current shell context
function doesCommandExist() {
    the_command=$1
    command -v "${the_command}" &>/dev/null
}

_exportFunctionQuietly doesCommandExist
# =============================================================================

# Get the directory of the executed/sourced script
function getScriptPath() {
    cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P
}

_exportFunctionQuietly getScriptPath
# =============================================================================
