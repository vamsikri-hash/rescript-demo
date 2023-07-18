type t = {firstName: string, country: string}

let make = (~firstName: string, ~country: string) => {firstName, country}
let getFirstName = player => player.firstName
