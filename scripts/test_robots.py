import urllib.robotparser

rp = urllib.robotparser.RobotFileParser()
rp.set_url("https://resume.ootori.dev/robots.txt")
rp.read()

print(rp.can_fetch("*", "https://resume.ootori.dev/"))
print(rp.can_fetch("Googlebot", "https://resume.ootori.dev/admin/"))