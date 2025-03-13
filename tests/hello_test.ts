import { describe, test } from "bun:test";
import { exampleHostApplication } from "../src/ExampleHostApplication.ts";

describe("ExampleHostApplication Tests", () => {
  test("Invoke example host application", async () => {
    await exampleHostApplication();
  });
});
