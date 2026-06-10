// XOR Logic Implementation
// A -> Pin 2
// B -> Pin 3
// LED -> Pin 4

const int A = 2;
const int B = 3;
const int LED = 4;

void setup()
{
    pinMode(A, INPUT);
    pinMode(B, INPUT);

    pinMode(LED, OUTPUT);
}

void loop()
{
    int a = digitalRead(A);
    int b = digitalRead(B);

    int y = (a && !b) || (!a && b);

    digitalWrite(LED, y);
}
