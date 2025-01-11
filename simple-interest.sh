Code: simple-interest.sh

#!/bin/bash
# Function to calculate Simple Interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3

    # Simple Interest formula: (P * R * T) / 100
    simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)
    echo "The Simple Interest is: $simple_interest"
}

# Prompt the user for inputs
echo "Enter the Principal amount:"
read principal

echo "Enter the Rate of Interest (%):"
read rate

echo "Enter the Time period (in years):"
read time

# Validate inputs
if [[ -z "$principal" || -z "$rate" || -z "$time" ]]; then
    echo "Error: All inputs (Principal, Rate, Time) are required."
    exit 1
fi

if ! [[ $principal =~ ^[0-9]+(\.[0-9]+)?$ && $rate =~ ^[0-9]+(\.[0-9]+)?$ && $time =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
    echo "Error: Please enter valid numerical values for Principal, Rate, and Time."
    exit 1
fi

# Call the function to calculate Simple Interest
calculate_simple_interest "$principal" "$rate" "$time"

Explanation:

1. Shebang Line:
      #!/bin/bash specifies that the script should run in the Bash shell.
2. Function Definition:
      calculate_simple_interest takes three arguments: principal, rate, and time.
           It calculates the Simple Interest using the formula
               SI = (P*R*T)/100
           The BC command is used for floating-point arithmetic
3. Input Validation:
    Checks are performed to ensure: 
        No input is left empty.
        All input are valid numerical values.
    If validation falis, the script exits with error message.

4. Calculation:
     The Function is called with the user input as arguments.
     The result is printed woth scale = 2 to display up to two decimal places.

5. Output:
    Display The calculated simple Interest.


How To Use: 
   1. Save the Script as simple-interest.sh
   2. Make is executable:
            chmod +x simple-interest.sh
   3. Run the Script: 
             ./simple-interest.sh
   4. Enter the value when prompted:
        Principal amount, Rate of interest, Time period
    
         
           
