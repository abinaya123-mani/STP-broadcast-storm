# STP-broadcast-storm
# STP Broadcast Storm

## Overview

This project demonstrates how **Spanning Tree Protocol (STP)** prevents Layer 2 broadcast storms in a redundant Ethernet switching topology.

The topology is implemented using **Containerlab** and **Open vSwitch (OVS)**. Multiple switches are connected with redundant paths, creating a Layer 2 loop. STP is enabled on all switches so that one redundant link is placed into a blocking state while the remaining links continue forwarding traffic.

The project also demonstrates network connectivity and broadcast traffic behavior using `ping`, `arping`, `tcpdump`, and Open vSwitch port counters.

---

## Objectives

- Build a redundant Layer 2 topology using Containerlab.
- Configure Open vSwitch bridges.
- Connect multiple switches using Ethernet interfaces.
- Enable Spanning Tree Protocol on all switches.
- Verify STP root bridge selection.
- Identify the STP-blocked port.
- Verify host-to-host connectivity.
- Generate and observe broadcast traffic.
- Monitor switch port counters.
- Demonstrate how STP prevents a Layer 2 forwarding loop and broadcast storm.

---

## Technologies Used

- Linux
- Docker
- Containerlab
- Open vSwitch (OVS)
- Spanning Tree Protocol (STP)
- `ovs-vsctl`
- `ovs-ofctl`
- `ping`
- `arping`
- `tcpdump`
- Git / GitHub

---

## Topology

The project contains four Open vSwitch switches:

- `sw1`
- `sw2`
- `sw3`
- `sw4`

and hosts including:

- `h1`
- `h2`

The switches are connected using redundant Layer 2 paths.

The redundant topology intentionally creates a loop so that STP can detect the loop and place one port into a blocking state.

---

## Project Structure

```text
STP-broadcast-storm/
│
├── Dockerfile
├── topology.clab.yml
├── README.md
└── screenshots/
    ├── 01-containerlab-topology-and-connectivity.png
    ├── 02-openvswitch-start.png
    ├── 03-ovs-bridge-creation.png
    ├── 04-ovs-port-configuration.png
    ├── 05-stp-enabled.png
    ├── 06-stp-root-status.png
    ├── 07-stp-port-states.png
    ├── 08-host-connectivity.png
    ├── 09-arping-test.png
    ├── 10-broadcast-tcpdump.png
    ├── 11-port-counters.png
    └── 12-final-stp-verification.png
