<h1>📱 Flutter SharedPreferences Login Flow</h1>

<p>
This project demonstrates a simple and clean implementation of 
<b>local login persistence</b> using <code>SharedPreferences</code> in Flutter.
</p>

<hr/>

<h2>✨ Features</h2>
<ul>
  <li>Save user data locally using SharedPreferences</li>
  <li>Persist login state (<code>isloggedin</code>)</li>
  <li>Navigate to HomePage after login</li>
  <li>Null-safe data retrieval</li>
  <li>Clean and simplified widget lifecycle</li>
</ul>

<hr/>

<h2>🧠 Key Concepts Covered</h2>
<ul>
  <li>SharedPreferences (local storage)</li>
  <li>Async / await usage</li>
  <li>Null safety handling</li>
  <li>Navigation using Navigator</li>
  <li>Widget lifecycle best practices</li>
  <li>Mounted context safety</li>
</ul>

<hr/>

<h2>🗂️ Project Flow</h2>
<ol>
  <li>User enters text in TextField</li>
  <li>Data is saved locally using SharedPreferences</li>
  <li>Login flag (<code>isloggedin</code>) is set to true</li>
  <li>User is navigated to HomePage</li>
</ol>

<hr/>

<h2>🛠️ Code Highlights</h2>

<h3>Saving Data & Login</h3>
<pre>
SharedPreferences prefs = await SharedPreferences.getInstance();
await prefs.setString('name', controller.text);
await prefs.setBool('isloggedin', true);
</pre>

<h3>Safe Navigation</h3>
<pre>
if (!mounted) return;
Navigator.push(
  context,
  MaterialPageRoute(builder: (_) => const HomePage()),
);
</pre>

<h3>Null Safety Fix</h3>
<pre>
if (name != null) {
  controller.text = name;
}
</pre>

<hr/>

<h2>✅ Improvements Made</h2>
<ul>
  <li>Removed unnecessary <code>initState</code></li>
  <li>Removed extra helper functions</li>
  <li>Avoided misuse of <code>setState</code></li>
  <li>Handled null values safely</li>
  <li>Simplified login flow</li>
</ul>

<hr/>

<h2>📌 Why This Approach?</h2>
<p>
This implementation focuses on simplicity and clarity.
Instead of overusing lifecycle methods, the logic is kept 
minimal and readable while maintaining correct behavior.
</p>

<hr/>

<h2>🚀 Future Enhancements</h2>
<ul>
  <li>Auto-login on app start using FutureBuilder</li>
  <li>Logout functionality</li>
  <li>SharedPreferences service singleton</li>
  <li>Auth guard widget</li>
</ul>

<hr/>

<h2>🧑‍💻 Author</h2>
<p>
Built with ❤️ while learning Flutter fundamentals and best practices.
</p>

<hr/>

<p>
<b>Tech Stack:</b> Flutter · Dart · SharedPreferences
</p>
