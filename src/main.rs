use qrcode::QrCode;
use image::Luma;

fn main() {
    // 你的網址
    let url = "https://resume.ootori.dev";

    // 建立 QR Code
    let code = QrCode::new(url.as_bytes()).unwrap();

    // --- 方法1：存成 PNG ---
    let image = code.render::<Luma<u8>>().build();
    image.save("resume.ootori.dev.png").unwrap();

    println!("QR Code 已經產生 → resume.ootori.dev.png");

    // --- 方法2：在終端機印出文字版 ---
    // let string = code.render::<unicode::Dense1x2>().build();
    // println!("{}", string);
}