import java.util.List;

public class ListAdsDao implements Ads{
    private List<Ad> ads;

    public List<Ad> all() {
        if (ads == null) {
            ads = generateAds();
        }
        return ads;
    }

    private List<Ad> generateAds() {
        ads.add(new Ad(
                1,
                1,
                "PS4 for sale",
                "This is a slightly used PS4"
        ));
        ads.add(new Ad(
                2,
                1,
                "PS2 for sale",
                "Refurbished classic! "
        ));

        ads.add(new Ad(
                3,
                2,
                "Jr. Java Developer Position",
                "Minimum 7 years of exp required. You will be working in scripting language for Java, Javascript"
        ));
        ads.add(new Ad(
                4,
                2,
                "Javascript Developer needed",
                "Must have strong Java skillset"
        ));
        return ads;
    }
}
