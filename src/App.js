import './App.css';

const ENV = process.env.REACT_APP_ENV;

function EnvironmentBanner() {
  if (ENV === 'test') {
    return <div className="env-banner env-banner-test">TEST ENVIRONMENT</div>;
  }
  if (ENV === 'production') {
    return <div className="env-banner env-banner-production">PRODUCTION ENVIRONMENT</div>;
  }
  return null;
}

function App() {
  return (
    <div className="app-container">
      <EnvironmentBanner />
      <h1 className="heading">Hello World Check</h1>
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
