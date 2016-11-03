weights = [
  1 1 1 0;
  0 0 1 0;
  1 1 1 0;
  0 0 1 0;
]

input = [
  0 1 1 1 0;
  0 0 0 1 0;
  0 1 1 1 0;
  0 0 0 1 0;
  0 1 1 1 0;
]

function g = sigmoid(z)
g = 1.0 ./ (1.0 + exp(-z));
end

h1 = input(1:4, 1:4);
h2 = input(1:4, 2:5);
h3 = input(2:5, 1:4);
h4 = input(2:5, 2:5);

z1 = sum(dot(h1, weights));
a1 = sigmoid(z1);

z1 = sum(dot(h1, weights));
a1 = sigmoid(z1);
