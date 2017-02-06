open System

let processInt (a: int) (b: int) : unit =
    printfn "%d" (a + b)
    printfn "%d" (a * b)

[<EntryPoint>]
let main argv =
    let a = Console.ReadLine() |> int
    let b = Console.ReadLine() |> int
    processInt a b
    0
