import './App.css';

function App() {
  return (
    <div className="app-container">
      <h1 className="heading">Hello World</h1>
      <p className="subtitle">CI/CD Demo — React App</p>
      <p className="timestamp">Deployed at: {new Date().toLocaleString()}</p>
      <p className="version">v1.0.0</p>
      <div className="badges">
        <span className="badge badge-aws">Deployed on AWS</span>
        <span className="badge badge-gcp">Deployed on GCP</span>
      </div>
    </div>
  );
}

export default App;
