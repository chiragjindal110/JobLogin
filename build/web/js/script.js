var subject_input = document.getElementById("subject-input");
var question_input = document.getElementById("question-input");
var submit_question = document.getElementById("submit-question");
var new_question_button = document.getElementById("new-question-button");
var discussion = document.getElementById("discussion-portal");
var responses = document.getElementById("responses");
var search_question_button = document.getElementById("search-question-button");
var no_questions = document.getElementById("No-questions");
var id = localStorage.getItem("id");


// checking for the id,if present
if(id)
{
  id = id*1;
}
else{
  localStorage.setItem("id","1");
  id=1;
}


//Getting the stored Questions
var questions = GetStoredQuestions();
questions.forEach(function(ques){
  // Appending each stored questions to the question list.
AppendQuestion(ques.subject,ques.question,ques.id,ques.votes,ques.isLiked);
});



// Event Listener for the Search
search_question_button.addEventListener("keyup",function(){
    var search = search_question_button.value +"";
    var list  = document.getElementById("list"); // Questions List
    if(list)
    {
          var list_items = list.childNodes;
          list_items.forEach(function(item){
          if(item)
          {
                  var div = item.firstChild;
                  if(div)
                  {
                      var heading = div.firstChild;
                      if(heading)
                      {
                            heading = heading.innerText + "";
                            if(heading.includes(search))
                          {
                              item.style.display = "block";
                          }
                          else
                          {
                            item.style.display = "none";
                          }
                      }
                  }
           }
      })
    }  
})


// Event Listener for the New Questions button
new_question_button.addEventListener("click",function(){
  discussion.style.display = "block";
  responses.style.display = "none";
})


// event Listener for any new Question Submission
submit_question.addEventListener("click",function submit(){
  if(subject_input.value!="" && question_input.value!="")
  {
    AppendQuestion(subject_input.value,question_input.value,id,0);
    StoreInLocalStorage(subject_input.value,question_input.value,id);
    subject_input.value="";
    question_input.value="";
    id++;
    localStorage.setItem("id",id+"");
  }
  else
  {
    window.alert("Both Subject field and Question field are mandatory");
  }
})



function AppendQuestion(subject,question,id,votes,isLiked)
{
  no_questions.style.display="none";
  var ul = document.getElementById("list");
  var li = document.createElement("li");
  var div = document.createElement("div");
  var h2 = document.createElement("h2");
  var h4 = document.createElement("h4");
  var for_id = document.getElementById("for-id");
  li.classList.add("questions-list");
  div.classList.add("questions-list-div");

  //Elements for the voting
  var vote_icon = document.createElement("i");
  vote_icon.classList.add("fa","fa-thumbs-up");
  var vote_count = document.createElement("p");
  vote_count.innerText = votes;
  vote_count.classList.add("vote-count");
  var vote_span = document.createElement("span");
  vote_span.classList.add("vote-span");
  vote_span.appendChild(vote_count);
  vote_span.appendChild(vote_icon);
  if(isLiked)
  {
    vote_icon.style.color = "#1e90ff";
  }
  vote_icon.addEventListener("click",function(){
    var votes = vote_count.innerText *1;
    votes++;
    console.log(vote_count.innerText,votes);
    vote_count.innerHTML = votes +"";
    StoreVote(id,vote_count.innerHTML *1);
    SortList();
  })
    
  h2.innerText = subject;
  h4.innerText = question;
  div.appendChild(h2);
  div.appendChild(h4);
  li.appendChild(div);
  li.append(vote_span);
  ul.appendChild(li);

 

  li.addEventListener("click",function(){
    
    var rul = document.createElement("ul");
    rul.setAttribute("id","responses-list");
    var rdiv = document.getElementById("responses-div");
    rdiv.innerHTML ="";// Removing old responses

    for_id.innerText=id;// Appending id to the hidden id tag

    discussion.style.display = "none";// Hidding discussion Portal
    var questionname = document.getElementById("question-name");
    var questioncontent = document.getElementById("question-content");
    questionname.innerText = subject;
    questioncontent.innerText = question;

    // EventListener for the Resolve Button to delete the question from the portal
    var resolve_button = document.getElementById("resolve-button");
    resolve_button.addEventListener("click",function (){
      console.log(for_id.innerText *1);
      ClearQuesion(for_id.innerText *1);// Clearing question from the LocalStorage
      responses.style.display="none";
      discussion.style.display="block";// Showing the discussion Portal
      SortList();
      if(ul.innerText=="")
      {
        no_questions.style.display="block"; // If there is no question print "No questions yet"
      }
    })

    var res = GetResponses(for_id.innerText *1);// getting all the responses for the corresponding question

    if(res)// If there is any response
    {
      rul.style.display = "block";
      rdiv.appendChild(rul);
    
    res.forEach(function(resp){
        var rli = document.createElement("li");
        var rh3 = document.createElement("h3");
        var rh4 = document.createElement("h4");
        rh3.innerText = resp.name;
        rh4.innerText = resp.content;
        rli.appendChild(rh3);
        rli.appendChild(rh4);
        rli.classList.add("response-list");
        rul.appendChild(rli);
    })
    }
    responses.style.display = "block";// Displaying the response Section
  })

}



var submit_response = document.getElementById("submit-response");

  // EventListener if any Response is submitted
  submit_response.addEventListener("click",function (){
      var rul = document.getElementById("responses-list"); // Getting the responses list
      var for_id = document.getElementById("for-id");// Getting the id of the question
      var respName = document.getElementById("response-name-input");// Response Name
      var respContent = document.getElementById("response-content-input");// Response Content
    
      if(respName.value!="" && respContent.value!="")
      {
        var r = {
          name: respName.value,
          content: respContent.value
        }
        AddResponse(r,for_id.innerText *1);// Adding response to the Storage
        var rli = document.createElement("li");
        var rh3 = document.createElement("h3");
        var rh4 = document.createElement("h4");
        rh3.innerText = respName.value;
        rh4.innerText = respContent.value;
        rli.appendChild(rh3);
        rli.appendChild(rh4);
        rli.classList.add("response-list");
        rul.appendChild(rli);
        respName.value="";
        respContent.value = "";

      }
      
    })



function StoreInLocalStorage(subject,question,id)
{
  var newquestion = {
    "subject": subject,
    "question": question,
    "id": id,
    "responses" :[],
    "votes":0,
    "isLiked":false
  };
  var before = localStorage.getItem("questions");
  if(before)
  {
    before = JSON.parse(before);
    before.push(newquestion);
  }
  else{
    before = [newquestion];
  }
  before = JSON.stringify(before);
  localStorage.setItem("questions",before);
}



function GetStoredQuestions()
{
  var before = localStorage.getItem("questions");
  if(before)
  {
    before = JSON.parse(before);
    return before;
  }
  else{
    return [];
  }
}



function GetResponses(id)
{
  var before = GetStoredQuestions();
   for(var i=0;i<before.length;i++)
  {
    if(before[i].id===id)
    {
      return before[i].responses;
    }
    
  }
  return [];
}



function AddResponse(r,id)
{
  var questions = GetStoredQuestions();
  for(var i=0;i<questions.length;i++)
  {
    console.log(questions[i].id);
    if(questions[i].id === id)
    {
      console.log(id);
      questions[i].responses.push(r);
      break;
    }
  }
  questions = JSON.stringify(questions);
  localStorage.setItem("questions",questions);
}



function ClearQuesion(id1)
{
    var questions = GetStoredQuestions();
    for(var i=0;i<questions.length;i++)
    {
      if(questions[i].id === id1)
      {
        console.log(questions[i]);
        questions.splice(i,1);
        break;
      }
    }
    questions = JSON.stringify(questions);
    localStorage.setItem("questions",questions);
}



function StoreVote(id,votes)
{
  var questions = GetStoredQuestions();
  for(var i=0;i<questions.length;i++)
  {
    if(questions[i].id === id)
    {
      questions[i].votes = votes;
      questions[i].isLiked = true;
      break;
    }
  }
  questions = JSON.stringify(questions);
  localStorage.setItem("questions",questions);
}



function SortList()
{
  var ul = document.getElementById("list");
  list.innerHTML="";
  var question = GetStoredQuestions();
  question.sort(function(a,b){return b.votes -a.votes});
  console.log(question);
  question.forEach(function(ques){
      AppendQuestion(ques.subject,ques.question,ques.id,ques.votes,ques.isLiked);
  })
  question = JSON.stringify(question);
  localStorage.setItem("questions",question);
}