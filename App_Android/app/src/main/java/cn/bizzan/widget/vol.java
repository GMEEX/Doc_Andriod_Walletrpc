package cn.bizzan.widget;

/**
 * data: 2020/8/27.
 */
public class vol {


    /**
     * amount : 0.098664
     * buyOrderId : 102180925877
     * buyTurnover : 1122.82690584
     * direction : BUY
     * price : 11380.31
     * symbol : BTC/USDT
     * time : 1598517247618
     */

    private double amount;
    private String buyOrderId;
    private double buyTurnover;
    private String direction;
    private double price;
    private String symbol;
    private long time;

    public double getAmount() {
        return amount;
    }

    public void setAmount(double amount) {
        this.amount = amount;
    }

    public String getBuyOrderId() {
        return buyOrderId;
    }

    public void setBuyOrderId(String buyOrderId) {
        this.buyOrderId = buyOrderId;
    }

    public double getBuyTurnover() {
        return buyTurnover;
    }

    public void setBuyTurnover(double buyTurnover) {
        this.buyTurnover = buyTurnover;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getSymbol() {
        return symbol;
    }

    public void setSymbol(String symbol) {
        this.symbol = symbol;
    }

    public long getTime() {
        return time;
    }

    public void setTime(long time) {
        this.time = time;
    }
}
