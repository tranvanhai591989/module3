package giai_thuat;

import java.util.HashSet;
import java.util.Set;

public class CountDuplicateCharacter {
    static char[] solution(String str) {
        char[] check = new char[str.length()];
        Set<Character> setA = new HashSet<Character>();
        for (int i = 0; i < check.length; i++) {
            check[i] = str.charAt(i);
        }
        int count = 1;
        for (int i = 0; i < check.length; i++) {
            for (int j = i + 1; j < check.length; j++) {
                if (check[i] == check[j]) {
                    count++;
                }
            }
            if (count >= 2) {
                setA.add(check[i]);
                count = 1;
                continue;
            }

        }
        char[] temp = new char[setA.size()];
        int index = 0;
        for (Character charr : setA) {
            temp[index] = charr;
            index++;
        }
        return temp;

    }
}
