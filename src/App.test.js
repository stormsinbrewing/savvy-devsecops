/* eslint-disable no-undef */
import React from 'react'
import { render, screen } from '@testing-library/react'
import App from './App'

test('renders link', () => {
  render(<App />)
  const linkElement = screen.getByText(/Follow me on GitHub/i)
  expect(linkElement).toBeInTheDocument()
})
