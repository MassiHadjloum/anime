import { describe } from "node:test";
import { render, screen } from "@testing-library/react";
import Hero from "../../components/Hero";
import "@testing-library/jest-dom";

describe("<Hero />", () => {
  test("h1", () => {
    render(<Hero />);
    expect(screen.getByText("Explore The")).toBeInTheDocument();
  });
});
