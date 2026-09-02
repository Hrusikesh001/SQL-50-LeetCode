class Solution {
    public String frequencySort(String s) {
        HashMap<Character, Integer> map = new HashMap<>();

        for (char ch : s.toCharArray()) {
            map.put(ch, map.getOrDefault(ch, 0) + 1);
        }

        StringBuilder result = new StringBuilder();

        while (!map.isEmpty()) {

            char maxChar = ' ';
            int maxFreq = 0;

            for (char ch : map.keySet()) {

                if (map.get(ch) > maxFreq) {
                    maxFreq = map.get(ch);
                    maxChar = ch;
                }
            }

            for (int i = 0; i < maxFreq; i++) {
                result.append(maxChar);
            }

            map.remove(maxChar);
        }
        return result.toString();
    }
}