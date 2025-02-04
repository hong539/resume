use std::process::Command;
use std::fs;

fn main() {
    let tex_file = "src/yh_resume.tex";
    let output_html = "yh_resume.html";

    // 執行 TeX4ht (htlatex)
    let status = Command::new("htlatex")
        .arg(tex_file)
        .status()
        .expect("無法執行 htlatex，請確保 TeX4ht 已安裝");

    if status.success() {
        println!("成功轉換 LaTeX 為 HTML: {}", output_html);

        // 讀取生成的 HTML
        let html_content = fs::read_to_string(output_html)
            .expect("無法讀取生成的 HTML 檔案");

        // 複製到 output.html
        fs::write("output.html", html_content)
            .expect("無法寫入 output.html");

        println!("已將 HTML 內容寫入 output.html");
    } else {
        eprintln!("轉換失敗，請檢查 LaTeX 檔案格式");
    }
}