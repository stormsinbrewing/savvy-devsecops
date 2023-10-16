/* eslint-disable no-undef */
import React from 'react'
const { render } = require('@testing-library/react')
const App = require('./App')

test('renders the App component', () => {
  const { getByText } = render(<App />)
  const linkElement = getByText(/learn react/i)
  expect(linkElement).toBeInTheDocument()
})
