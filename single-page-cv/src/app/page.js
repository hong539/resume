"use client";
export default function ResumePage() {
  return (
    <div style={{ height: "100vh", overflow: "hidden" }}>
      <embed src="/yh_resume.pdf" type="application/pdf" width="100%" height="100%"/>
    </div>
  );
}