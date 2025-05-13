
# 🔗 Salesforce Integration Scenarios

## 1. 📈 Bitcoin Price Tracker (CoinDesk API)
- **Goal**: Integrate with the CoinDesk API to fetch current Bitcoin prices.
- **Implementation**:
  - Perform a callout to the CoinDesk API.
  - Parse the response and store the data in a custom `Bitcoin_Price__c` object.

## 2. 🌦 Daily Weather Updater (OpenWeatherMap API)
- **Goal**: Schedule a job to retrieve and update weather data daily.
- **Implementation**:
  - Use `Schedulable` Apex class to call the OpenWeatherMap API.
  - Update a custom object `Weather_Data__c` with the latest weather information.

## 3. 📡 Real-Time Integration with Platform Events
- **Goal**: Send real-time Opportunity data to an external system.
- **Implementation**:
  - Define a `SendOpportunityEvent__e` platform event.
  - Publish the event when a new Opportunity is created.
  - Call an external mock API endpoint using an asynchronous trigger handler.

## 4. 🌐 Custom REST API via @RestResource
- **Goal**: Expose a REST endpoint to allow external systems to create Leads.
- **Implementation**:
  - Use `@RestResource` annotation to define a POST endpoint.
  - Accept JSON payload and insert the Lead into Salesforce.

## 5. 🔁 Multi-Step API Integration
- **Goal**: Combine data fetching, storage, and confirmation message.
- **Implementation**:
  1. Fetch weather data from OpenWeatherMap.
  2. Store the data in a `Weather_Integration__c` object.
  3. Send an outbound HTTP POST to a mock external system to confirm receipt.

## 6. 🚨 Error Handling in Integrations
- **Goal**: Implement robust error handling.
- **Techniques**:
  - Use `try-catch` blocks for callouts.
  - Define custom exceptions for specific failure cases.
  - Add retry logic (exponential backoff or retry counter) for failed callouts.

## 7. 🛰 Change Data Capture (CDC) to External API
- **Goal**: React to Opportunity changes and notify external systems.
- **Implementation**:
  - Enable CDC for the Opportunity object.
  - Subscribe using a CDC trigger or Platform Event listener.
  - Call an external API when changes are detected.
