public class Docker {
  public static void main(String[] args) {
    Runtime runtime = Runtime.getRuntime();

    int processors = runtime.availableProcessors();
    long maxMemory = runtime.maxMemory();
    double mb = Math.pow(2, 20);
    double gb = Math.pow(2, 30);

    System.out.println("cpu: " +  processors);
    System.out.println("mem: " +  (maxMemory / gb));
  }
}
