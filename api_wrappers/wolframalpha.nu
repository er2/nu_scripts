# Fetch simple answer from WolframAlpha API
def wolfram [...query #Your query
] {
    let appID = #YOUR APP_ID
    let query_string = ($query | str join " ")
    let result = (http get $"https://api.wolframalpha.com/v1/result?appid=($appID)&i=($query_string)")
    $result
}

# Fetch image with full answer from WolframAlpha API
def wolframimg [...query #Your query
] {
    let appID = #YOUR APP_ID
    let query_string = ($query | str join " ")
    let filename = ($query_string + ".png")
    let link = $"https://api.wolframalpha.com/v1/simple?appid=($appID)&background=F5F5F5&fontsize=20&i=($query_string)"
    http get $link | save $filename
    echo ("Query result saved in file: " + $filename)
}
