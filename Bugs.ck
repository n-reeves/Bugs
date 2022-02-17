SinOsc s => LPF lpf => dac;

200 => lpf.freq;

1::second => dur brick;

[64, 74, 71, 78, 76, 74, 72, 71, 60, 67, 71, 74, 71, 69, 67, 69, 64, 71, 67, 74, 71, 78, 76, 74, 60, 67, 71, 74, 72, 71, 67, 69, 57, 64, 67, 71, 74, 71, 69, 72, 60, 67, 71, 74, 72, 71, 67, 69, 57, 64, 67, 71, 74, 71, 69, 72, 60, 67, 71, 74, 72, 71, 67, 69] @=> int melody[];

[brick/8, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0, brick/8.0] @=> dur noteValues[];

0 => int j;

while (j < 400 ) {
    for (0 => int i; i < melody.cap(); i++)
    {
        Std.mtof(melody[i]) => s.freq;
        noteValues[i] => now;  
    }
    j + 50 => j;
    200 + j => lpf.freq;
}

550 => lpf.freq;

for(0 => int k; k < 2; k++) {
    for (0 => int i; i < melody.cap(); i++)
    {
        Std.mtof(melody[i]) => s.freq;
        noteValues[i] => now;  
    }
}

350 => lpf.freq;

for(0 => int k; k < 2; k++) {
    for (0 => int i; i < melody.cap(); i++)
    {
        Std.mtof(melody[i]) => s.freq;
        noteValues[i] => now;  
    }
}

200 => lpf.freq;

for (0 => int i; i < melody.cap(); i++)
{
    Std.mtof(melody[i]) => s.freq;
    noteValues[i] => now;  
}
