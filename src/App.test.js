import { render, screen } from '@testing-library/react';
import App from './App';

test('renders Hello World heading', () => {
  render(<App />);
  const heading = screen.getByText(/hello world/i);
  expect(heading).toBeInTheDocument();
});

test('renders CI/CD Demo text', () => {
  render(<App />);
  const subtitle = screen.getByText(/ci\/cd demo/i);
  expect(subtitle).toBeInTheDocument();
});
