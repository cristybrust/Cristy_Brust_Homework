import csv

csvpath = 'election_data.csv'



with open(csvpath, 'r') as csvfile:


    csvreader = csv.reader(csvfile, delimiter=',')

    header = next(csvreader)
    Candidate_List = []
    
    for row in csvreader:
        Name = row[2]
        Candidate_List.append(Name)


Total_Votes = len(Candidate_List)

 
Count_Voting = {} 
for name in Candidate_List: 
    if (name in Count_Voting): 
        Count_Voting[name] += 1
    else: 
        Count_Voting[name] = 1


Winner = max(Count_Voting.keys(), key =(lambda k: Count_Voting[k]))
        

print ('Election Results \n-------------------------')


for name in Count_Voting:
    percent_votes = Count_Voting[name]/Total_Votes
    percent_votes_format = "{:.3%}".format(percent_votes)
    print(f'{name}: {percent_votes_format} ({Count_Voting[name]})')

    
print ('------------------------- ')
print(f'Winner :{Winner}')
