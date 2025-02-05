"use client"; // 確保這是 Client Component

import React from "react";

export default function ResumePage() {
  return (
    <div style={{ height: "100vh", overflow: "hidden" }}>
      <embed
        src="/yh_resume.pdf"
        type="application/pdf"
        width="100%"
        height="100%"
        style={{ border: "none" }}
      />
    </div>
  );
}