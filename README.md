# Xschem / ngspice Workflow & Ubuntu Commands

---

## 1. Launch Ubuntu (WSL)

```bash
wsl --cd ~
```

> If the **Ubuntu-24.04** app is installed, just launch it directly — no command needed.

---

## 2. Open Xschem

```bash
xschem &        # Opens in background, terminal stays free
xschem          # Blocks terminal until xschem is closed
```

---

## 3. New Schematic & File Navigation

1. `Ctrl+T` — New schematic
2. `Ctrl+O` (or `Ctrl+Shift+O`) — Open file explorer
> **Note:** Open a new file before using Ctrl+O to open files.

### Key Symbols — `devices/` folder

.sym are symbols(compentents) that can be used in schematic

| Symbol | Component |
|---|---|
| `vsource.sym` | Voltage source |
| `gnd.sym` | Ground |
| `code_shown.sym` | ngspice code block (visible in schematic) |
| `code.sym` | ngspice code block (hidden in schematic) |
| `8T_sram_cell.sym` | 8T SRAM cell |

![devices folder](https://github.com/Project-Team2/xschem_projects_github/blob/main/readme%20images/devices_folder.png)

### Key Files — `xschem_projects/` folder

.sch are schematic files(workspace)

| File | Description |
|---|---|
| `8T_sram_array_test - Copy.sch` | MAC operation circuit |
| `8T_sram_cell.sch` | 8T SRAM cell schematic |
| `8T_sram_cell.sym` | Symbol linked to `8T_sram_cell.sch` |

![xschem projects](https://github.com/Project-Team2/xschem_projects_github/blob/main/readme%20images/xschem_projects.png)

---

## 4. Run Simulation

1. Click **Netlist**
2. Click **Simulate** — opens ngspice

### Save simulation data (in ngspice prompt)

```
write mydata.raw
```

---

## 5. Plot in Python

```bash
# Activate virtualenv
cd /home/user/pyvenvs/sky130venv
source bin/activate
# Terminal now shows: (sky130venv)

# Open VSCode (optional)
code

# Run a python file
python plot_decimal_bl.py
```

> **Note:** Run Python files from the **Ubuntu terminal**, not the VSCode integrated terminal — it can be flaky.

### VSCode Codex (chatgpt)

- Right-side panel in VSCode
- Use `@filename` to reference a file
- Default: **codex-5.3** (higher token usage)
- Lighter options: **codex-5.2** or **codex-5.2-mini** for simple tasks

---

## 6. Ubuntu Commands

### `mkdir` — Create Directory(Folder)

```bash
mkdir my_folder               # Create a single directory
mkdir -p path/to/nested/dir   # Create nested directories
```

| Command | What happens |
|---|---|
| `mkdir folder_name` | Creates a new directory in the current location |
| `mkdir -p a/b/c` | Creates full path, including any missing parent dirs |

---

### `cdd` — Navigation Command

A command that lists directory contents with **numbered entries** so you can navigate by number instead of typing full names. Colors and line numbers are always shown. Does everything the `cd` command does.

#### Usage

| Command | What happens |
|---|---|
| `cdd` | Lists current directory with numbered entries |
| `cdd 3` | `cd` into item **#3** from the list |
| `cdd ..` | Go up one directory, then list contents |
| `cdd -la` | List with `-la` flags (shows hidden files, sizes, etc.) |
| `cdd -la 2` | List with `-la`, then `cd` into item **#2** |

#### Example session

```
$ cdd
  1   Documents
  2   Downloads
  3   pyvenvs
  4   xschem_projects

$ cdd 3
  1   sky130venv

$ cdd ..
  1   Documents
  2   Downloads
  3   pyvenvs
  4   xschem_projects
```

### Command history

click Up arrow to view previous ran commands(you can see my history too as it is a copy of mine)

### In windows File Explorer

Enter `\\wsl$` in address bar to view files of ubuntu just as you view files in windows.

![wsl_fileExplorer](https://github.com/Project-Team2/xschem_projects_github/blob/main/readme%20images/wsl_fileExplorer.png)