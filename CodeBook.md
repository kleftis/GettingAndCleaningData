

 subject                    
    Subject number
                           1..30 Unique identifier assigned to each subject

 activity                   
    Acitivity label
                           "WALKING"
                           "WALKING_UPSTAIRS"
                           "WALKING_DOWNSTAIRS"
                           "SITTING"
                           "STANDING"
                           "LAYING"
 tbodyaccmeanx  
 tbodyaccmeany               
 tbodyaccmeanz  
 tbodyaccstdx                
 tbodyaccstdy     
 tbodyaccstdz                
 tgravityaccmeanx     
 tgravityaccmeany            
 tgravityaccmeanz  
 tgravityaccstdx             
 tgravityaccstdy      
 tgravityaccstdz             
 tbodyaccjerkmeanx    
 tbodyaccjerkmeany           
 tbodyaccjerkmeanz     
 tbodyaccjerkstdx            
 tbodyaccjerkstdy      
 tbodyaccjerkstdz            
 tbodygyromeanx         
 tbodygyromeany              
 tbodygyromeanz           
 tbodygyrostdx               
 tbodygyrostdy            
 tbodygyrostdz               
 tbodygyrojerkmeanx       
 tbodygyrojerkmeany          
 tbodygyrojerkmeanz       
 tbodygyrojerkstdx           
 tbodygyrojerkstdy        
 tbodygyrojerkstdz           
 tbodyaccmagmean          
 tbodyaccmagstd              
 tgravityaccmagmean      
 tgravityaccmagstd           
 tbodyaccjerkmagmean      
 tbodyaccjerkmagstd          
 tbodygyromagmean          
 tbodygyromagstd             
 tbodygyrojerkmagmean    
 tbodygyrojerkmagstd         
 fbodyaccmeanx             
 fbodyaccmeany               
 fbodyaccmeanz             
 fbodyaccstdx                
 fbodyaccstdy               
 fbodyaccstdz                
 fbodyaccmeanfreqx          
 fbodyaccmeanfreqy           
 fbodyaccmeanfreqz          
 fbodyaccjerkmeanx           
 fbodyaccjerkmeany       
 fbodyaccjerkmeanz           
 fbodyaccjerkstdx           
 fbodyaccjerkstdy            
 fbodyaccjerkstdz            
 fbodyaccjerkmeanfreqx       
 fbodyaccjerkmeanfreqy      
 fbodyaccjerkmeanfreqz       
 fbodygyromeanx             
 fbodygyromeany              
 fbodygyromeanz             
 fbodygyrostdx               
 fbodygyrostdy              
 fbodygyrostdz               
 fbodygyromeanfreqx         
 fbodygyromeanfreqy          
 fbodygyromeanfreqz          
 fbodyaccmagmean             
 fbodyaccmagstd              
 fbodyaccmagmeanfreq         
 fbodybodyaccjerkmagmean     
 fbodybodyaccjerkmagstd      
 fbodybodyaccjerkmagmeanfreq 
 fbodybodygyromagmean        
 fbodybodygyromagstd         
 fbodybodygyromagmeanfreq    
 fbodybodygyrojerkmagmean    
 fbodybodygyrojerkmagstd     
 fbodybodygyrojerkmagmeanfreq

Except subject and activity variables the rest variables represents a feature that was extracted from the raw data sets. The follows apply to all faetures:
1. Every feature begins either with the letter "t" or "f" indicating that
   the feature were derived in time or frequency.
2. Features that come from the accellerometer, gyroscope, body, gravity are
   denoted by "acc", "gyro", "body" or "bodybody" and "gravity" respectivelly.
3. Signals were obtained from body linear acceleration and angular velocity
   denoted by jerk signals were obtained from body linear acceleration and
   angular velocity.
4. Letters "x", "y", "z" at the end of each variable indicate the direction of the
   three-axial raw signal.
5. The "mean" and the "std" in a feature, represent that the feuture represents
   the corresponding mean or standard deviation
6. Values of all features is [-1,1]
