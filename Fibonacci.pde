int sum = 0;
int init1 = 1;
int init2 = 1;

int windowX = 1280;
int windowY = 720;

void setup(){  size(1280, 720); }

float centerX = (windowX / 2);
float centerY = (windowY / 2);

int pos = 0;

void draw(){
  
  if(sum <= 0){
    rect(centerX, centerY, init1, init1);
    rect(centerX, centerY + init1, init1, init1);
  }
  
  sum = (init1 + init2);
  
  print("-> " + sum + "\n");
  
  switch(pos){
  
  case 0: // RIGHT
       
    rect(centerX + (init1 / 2.20), centerY - (init2 - init1) - (init1 / 10) , sum, sum);
    ++pos;
    break;
  
  case 1:  // TOP  
    
    // centerX - (init2 - init1)
    rect(centerX - (init2 - init1) , centerY - (sum + ((init2 - init1) / 1.645)), sum, sum);
   ++pos;
    break;
  
  case 2: // LEFT
  
       
    rect(centerX - (sum + ((init2 - init1) / 1.645)) , centerY - (init2 + (init1 / 4.25)), sum, sum);
    ++pos;
    
    break;
    
  case 3: // BOTTOM
  
    rect(centerX - ((sum /2) + (init1 / 1.835)), centerY + (init1 / 2.10), sum, sum);
    pos -= 3;
    break;
    
  case 4: // LEFT
  
    break;
  
  }
  
     //1    2   -   1
  init1 = sum - init1;
  
  // 2
  init2 = sum;
 
  delay(500);

}
