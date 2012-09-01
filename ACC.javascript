process.stdin.resume();
process.stdin.setEncoding('ascii');

process.stdin.on('data', function (input) {
    numbers = input.split("\n");
    sum = parseInt(numbers[0]) + parseInt(numbers[1])
    prod = parseInt(numbers[0]) * parseInt(numbers[1])
    process.stdout.write(sum+"\n"+prod+"\n");
});
