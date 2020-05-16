function Decode-B64String {
    param(
        [Parameter(Mandatory=$true,Position=1)]
        [string]$encodedString
    )
    begin{}
    process{
        $decodedString = [Text.Encoding]::Utf8.GetString([Convert]::FromBase64String($encodedString))
    }
    end{
        return $decodedString
    }
}

function EncodeAs-B64String {
    param(
        [Parameter(Mandatory=$true,Position=1)]
        [string]$inputString
    )
    begin{}
    process{
        $encodedString = [Convert]::ToBase64String([Text.Encoding]::UTF8.GetBytes($inputString))
    }
    end{
        return $encodedString
    }
}