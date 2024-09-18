/*
Switzerland has four official languages: German, French, Italian, and Romansh.

When native speakers of one or more of these languages meet, they follow certain
regulations to choose a language for the group.2 Here are the rules for groups of
exactly three people:

When all three are native speakers of the same language, it also becomes their
group's language.

When two are native speakers of the same language, but the third person speaks
a different language, all three will converse in the minority language.

When native speakers of three different languages meet, they eschew these three
languages and instead use the remaining of the four official languages.

The languages are encoded by the letters D for Deutsch, F for Français, I for
Italiano, and K for Rumantsch.

Your task is to write a function that takes a list of three languages and returns
the language the group should use.
 */

import java.util.Arrays;

public class TrilingualDemocracy {
  public static char trilingualDemocracy(char[] group) {
    Arrays.sort(group);
    char languageUsed = 0;

    if (group[0] == group[2]) {
      // All three speak the same language
      languageUsed = group[0];
    } else if (group[0] == group[1]) {
      // Two speak the same language
      languageUsed = group[2];
    } else if (group[1] == group[2]) {
      // Two speak the same language
      languageUsed = group[0];
    } else {
      // All speak different languages
      char[] allLanguages = { 'D', 'F', 'I', 'K' };

      for (char lang : allLanguages) {
        if (lang != group[0] && lang != group[1] && lang != group[2]) {
          languageUsed = lang;
        }
      }
    }

    return languageUsed;
  }

  public static void main(String[] args) {
    System.out.println(trilingualDemocracy(new char[] { 'F', 'F', 'F' })); // return F
    System.out.println(trilingualDemocracy(new char[] { 'I', 'I', 'K' })); // return K
    System.out.println(trilingualDemocracy(new char[] { 'D', 'F', 'K' })); // return I
    System.out.println(trilingualDemocracy(new char[] { 'F', 'K', 'K' })); // return F
  }
}
