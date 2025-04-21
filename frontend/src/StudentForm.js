import React, { useState } from "react";
import axios from "axios";
import "./StudentForm.css"; // Import the CSS

const StudentForm = () => {
  const [form, setForm] = useState({ usn: "", name: "", sem: "" });

  const handleChange = (e) => {
    setForm({ ...form, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      await axios.post("http://localhost:5000/api/students", form);
      alert("✅ Student added!");
      setForm({ usn: "", name: "", sem: "" }); // Reset form
    } catch (err) {
      alert("❌ Error adding student");
    }
  };

  return (
    <div className="form-container">
      <h2>Enter Student Details</h2>
      <form onSubmit={handleSubmit} className="student-form">
        <input
          name="usn"
          placeholder="USN"
          value={form.usn}
          onChange={handleChange}
          required
        />
        <input
          name="name"
          placeholder="Name"
          value={form.name}
          onChange={handleChange}
          required
        />
        <input
          name="sem"
          type="number"
          placeholder="Semester"
          value={form.sem}
          onChange={handleChange}
          required
        />
        <button type="submit">Submit</button>
      </form>
    </div>
  );
};

export default StudentForm;
