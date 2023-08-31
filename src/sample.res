// Let binding
let log = Js.Console.log

let captain = "Virat"

Js.Console.log(captain)

let captain = "Rohit"

// Types - string, char, int, float, boolean, unit

let currentSeries = "India tour of WI"
let wicket = 'w'
let t20s = 5

let unt = ()

// Tuples

let highestScore = ("odi", 264)

// Array && List

let highestScores = [("odi", 264), ("test", 400)]

log(highestScores[0])

let highestScores = list{("odi", 264), ("test", 400)}

let printScore = matchWithScore => {
  let (match, score) = matchWithScore
  if match === "odi" {
    log("Highest odi score " ++ Belt.Int.toString(score))
  } else if match === "test" {
    log("Highest test score " ++ Belt.Int.toString(score))
  } else {
    log("Nothing")
  }
}

printScore(highestScore)
printScore(("oid", 264))

// Variants

type match = ODI | TEST | T20I

let hsc = (ODI, 264)

let printScore = matchWithScore => {
  switch matchWithScore {
  | (ODI, score) => log("Highest odi score " ++ Belt.Int.toString(score))
  | (TEST, score) => log("Highest test score " ++ Belt.Int.toString(score))
  | (T20I, score) => log("Highest t20 score " ++ Belt.Int.toString(score))
  }
}

printScore(hsc)
// Records

type matchDetails = {
  match: match,
  staduim: string,
}

let m1 = {match: ODI, staduim: "Eden Gardens"}

log(m1.staduim)

// Objects

let m2 = {"match2": ODI, "staduim": "any"}

log(m2["staduim"])

// If Else

// Switch

// Mutation

let num = ref(2)

log(num.contents)

num := 3

// Module System

open Player

log(getFirstName(make(~country="India", ~firstName="Rohit")))

// JS Interop
@module("../index.js") external logString: string => unit = "justPrint"

logString("Hi")
// Generate interface file using tooling
let num = 3
Js.Console.log(`Num is ${Belt.Int.toString(num)}`)
