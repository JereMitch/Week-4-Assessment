log_file = open("um-server-01.txt")      #Connecting the python file to the text file


def sales_reports(log_file):    #Creating/Naming a function that reaches into the text file
    for line in log_file:       #Creating a loop to go through the text file, giving a name to "line" to be used later
        line = line.rstrip()    #Calling upon "line" as a name for the function ".rstrip" that makes the data more readable
        day = line[0:3]         #Setting "day" equal to "line" at indexes 0 and 3
        if day == "Mon":        #Conditional logic 
            print(line)         #Print the day and the note attached to that day


sales_reports(log_file)         #calling the function


log_file.seek(0)

def melons_sold():
    for melon in log_file:
        melon = melon.rstrip()
        num = melon[2]
        if num >= 10:
            print(melon)

melons_sold()