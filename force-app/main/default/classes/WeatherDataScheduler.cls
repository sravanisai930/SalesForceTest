public class WeatherDataScheduler implements Schedulable {
     public void execute(SchedulableContext context) {
        WeatherFetcher.fetchWeatherData();
    }

}