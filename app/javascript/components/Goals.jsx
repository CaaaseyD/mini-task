import React, { useState, useEffect} from "react";

const Goals = () => {
  const [goals, setGoals] = useState([]);
  const goalsUrl = 'http://localhost:3000/api/v1/goals'
  const fetchGoals = () => {
    fetch(goalsUrl)
      .then((response) => response.json())
      .then((data) => {
        console.log(data)
        setGoals(data)
      })
  }
  useEffect(()=>{
    fetchGoals()},[])
  return(
    <>
      <h1>goal {goals.length}</h1>
      {goals &&
              goals.map(({ id, title, description, user }, i) => (
                <ul key={id}>
                  <li>{title}</li>
                  <li>{description}</li>
                  <li>{user.name}</li>
                </ul>
              ))}
    </>
  )
};

export default Goals;
