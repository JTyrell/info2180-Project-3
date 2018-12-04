
//PUT COMMENTS ON THE CHANGES MADE PLEASE SO EVERYBODY CAN OVERS WHATS TAKING PLACE IN THE CODE
//functions

function validateData(Fname, Lname, Pwrd1, Pwrd2, email, phone){

    var words_only = /[a-zA-Z ]+/;
    var words_with_numbers = /[a-zA-Z0-9 ].+/;
    var res = false;
    
    if (Fname =="") {
        window.alert('job title issue');
    } else if(!words_only.test(job_title)){
        window.alert("Only letters and white space allowed");    // check if Job Title only contains letters and whitespace
    }else{
        res = true;
    }
    
    if (Lname =="") {
        window.alert('job description issue');
    } else if(!words_with_numbers.test(job_description)){
        window.alert("something went wrong");    // check if Job Title only contains letters and whitespace
    }else{
      res = true;
    }
    
    if (Pwrd1 =="" || Pwrd2=="") {
        window.alert('password issue');
    } else if(!words_with_numbers.test(Pwrd1)){
        window.alert("something went wrong ");    // check if Job Title only contains letters and whitespace
    }else{
      res = true;
    }
      
    if (email =="") {
        window.alert('email issue');
    } else if(!words_with_numbers.test(email)){
        window.alert("something went wrong ");    // check if Job Title only contains letters and whitespace
    }else{
      res = true;
    }
    
    if (phone =="blank") {
        window.alert('enter phone number');
    }else{
      res = true;
    }
    return res;
}


function createJob(job_title, job_description, job_location, company, category){
    var httpRequest = new XMLHttpRequest(); 
    var url = " https://info2180-project3-rijkaa.c9users.io/createNewJob.php/";
    var result;
    job_title = "?title="+ job_title ;
    job_description = "&description=" +job_description;
    job_location = "&location="+ job_location;
    company = "&company="+ company ;
    category = "&category="+ category;
    
    url = url + job_title + job_description + job_location + company + category ;
     
    window.alert(url);
     
    httpRequest.open('POST', url);
    httpRequest.send();
    
    //window.alert(httpRequest);
     
    httpRequest.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            result = httpRequest.responseText;
            if(result == 'true'){
                window.alert('worked in php');
                //window.location.replace(" https://info2180-project3-rijkaa.c9users.io/home.php");
            }else{
                window.alert(result);
                //window.location.replace(" https://info2180-project3-rijkaa.c9users.io/createNewJob.php/");
            }
        }
    };
}

//end functions

window.onload = function() {
    var submit = document.getElementById("newsignup");
    
    submit.onclick = function(){
        var Fname = document.getElementById('Fname').value;    
        var Lname = document.getElementById('Lname').value;
        var Pwrd1 = document.getElementById('newpwrd').value;
        var Pwrd2 = document.getElementById('newpwrd2').value;
        var email = document.getElementById('newEmail').value;
        var phone = document.getElementById('telephone').value;
        
        window.alert("js working");
        
        if( validateUserData(Fname, Lname, Pwrd1, Pwrd2, email, phone) ){
           if (createUser()){
               console.log('user added');
           }else{
               console.log('something went wrong');
           }
        }else{
            window.alert("validate failed");
        }
    };
    
};

