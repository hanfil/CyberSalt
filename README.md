Basic Idea:
Use saltstack as the orchestrater for securty related tasks, monitoring, and alerting

- Orchestrator: Saltstack
- GUI/Dashboard: Grafana
- Salt States:
  - MockServers with beacons (e.g. https://www.mock-server.com/)
    - Canaries
  - Configurations
- Custom Runner/Beacon:
  - Firewall Logging - _which will be used to supply better rules_

---

```mermaid
graph TD;
    Custom_Beacon-->Firewall;
    Salt_Reactor-->Grafana_Dashboard;
    SaltStack-->Salt_Reactor;
    SaltStack-->Custom_Beacon;
    Custom_Beacon-->Salt_Reactor;
    SaltStack-->Salt_Agent;
    Mock_Server/Client-->Salt_Beacon;
    Salt_Beacon-->Salt_Reactor;
    Salt_Agent-->Mock_Server/Client;
```
 
