#!/usr/bin/env python3
from rich.console import Console
from rich.progress import Progress, BarColumn, TimeElapsedColumn, MofNCompleteColumn, TextColumn
import time

console = Console()

def run_step(step_name, total):
    with Progress(
        TextColumn("[bold]{task.description}"),
        BarColumn(),
        MofNCompleteColumn(),
        TimeElapsedColumn(),
        console=console,
        transient=True,  # removes progress display when done (clean screen)
    ) as progress:
        task = progress.add_task(step_name, total=total)
        for _ in range(total):
            time.sleep(0.01)
            progress.advance(task)

    console.print(f"[green]✔[/green] {step_name} done (items={total})")

run_step("Load CSV", 500)
run_step("Transform", 800)
run_step("Insert", 300)
