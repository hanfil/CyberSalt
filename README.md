Basic Idea:
Use saltstack as the orchestrater for securty related tasks, monitoring, and alerting

- Orchestrator: Saltstack
- GUI/Dashboard: Grafana
- Salt States:
  - MockServers with beacons (e.g. https://www.mock-server.com/)
    - Canaries
  - Configurations:
    - Sanbox _(Forensic Analysis)_
- Custom Runner/Beacon:
  - Firewall Logging - _which will be used to supply better rules_

---

```mermaid
graph TD;
    SaltStack-->Salt_Reactor;
    SaltStack-->Custom_Beacon;
    SaltStack-->Salt_Proxy;
    SaltStack-->Salt_Agent;
    
    Salt_Proxy-->Firewall;
    Firewall-->Custom_Beacon;
    
    Mock_Server/Client-->Salt_Beacon;
    Salt_Agent-->Mock_Server/Client;
    Salt_Agent-->Sandbox;
    
    Salt_Beacon-->Salt_Reactor;
    Custom_Beacon-->Salt_Reactor;
    
    Salt_Reactor-->Grafana_Dashboard;
```
 
