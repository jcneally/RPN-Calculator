### How To Run
Download the files or fork a copy. Running the calculator prompt should be as simple as ```ruby rpn_calc.rb```

### How To Quit
Quit the calculator prompt by typing ```q``` or using ```Ctrl+C```

### Additional Notes
The RPN Calculator is currently designed to be easily modifyable for file I/O, likely by changing the empty return to returning the current top of the stack, modifying print statements, error handling, etc. The data structure also allows for persistence of the stack's state, although right now it is set up to clear every time it is run.

For a more extensible calculator (ie, an additional 10 operators and a web interface) a hash could be set up to easily add functionality. This would be mapped based on the operator found.
```
{
"+" => lambda { |l, r| l + r },
...
}
```
Cases with a different number of operands would need to be handled properly. For example, if the unary minus operator was requested, we would need to specify the number of operands and ensure a unique symbol ("-" could not be used for both minus and unary minus -- it would be ambiguous).

As far as a web interface, that would depend on the kind of responsiveness desired. For example, if we wish to have a calculator that is entirely client-side (which in this case for a calculator, is very likely), it may be necessary to re-create the RPN Calculator using javascript. Any data that needed to persist between pages could be transferred via AJAX or in cookies.
