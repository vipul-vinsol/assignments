# Usage:-
## Name Modifier
chmod +x filename.sh                    
./filename.sh input-file                        
Note:- Solution modifies the same file.                                

## Version Changer
chmod +x filename.sh                           
./filename.sh                                  
Note:- Solution user $HOME as base for path structure

## Backup 
chmod +x filename.sh                        
./filename.sh                                 
Note:- Considers $HOME/project as project dir, and creates backup in the dir script is running in.
