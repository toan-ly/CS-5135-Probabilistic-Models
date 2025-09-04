n = 7;
result = 0.0;
for x1 in 0:n
    for x2 in 0:(n-x1)
        for x3 in 0:(n-x1-x2)
            x4 = n - x1 - x2 - x3;
            global result += (factorial(n) / (factorial(x1) * factorial(x2) * factorial(x3) * factorial(x4)))^2;
        end
    end
end
result /= 4.0^14;
println("Probability that the chef matches the correct order: $result")

