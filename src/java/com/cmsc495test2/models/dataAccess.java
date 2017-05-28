/*
 * Copyright (C) 2017 Rob Garcia at rgarcia92.student.umuc.edu
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */
package com.cmsc495test2.models;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import static java.lang.System.out;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author Rob Garcia at rgarcia92.student.umuc.edu
 */
public class dataAccess {
    public static ArrayList<StateDetails> getStateDetails(int keypadLetterGroup) {
        /* CHANGE WHEN JDBC IS IMPLEMENTED */
        /* Open flat file in the models package */
        InputStream is = dataAccess.class.getResourceAsStream("states.txt");
        try (BufferedReader br = new BufferedReader(new InputStreamReader(is, "UTF-8"))) {
            String row;
            String[] column;
            /* Get regex pattern to select states */
            Pattern pattern = Pattern.compile(getPattern(keypadLetterGroup));
            ArrayList<StateDetails> stateDetails = new ArrayList<>();
            /* Iterate through states and select data based on regex */
            while ((row = br.readLine()) != null) {
                column = row.split(",");
                Matcher matcher = pattern.matcher(column[0]);
                if (matcher.find()) {
                    stateDetails.add(new StateDetails(column[0], column[1]));
                }
            }
            /* Return results */
            return stateDetails;
        } catch (IOException e) {
            out.println("Read problem: " + e.getMessage());
            return null;
        }
    }
    
    private static String getPattern(int keypadLetterGroup) {
        String pattern = null;
        /* Select regex pattern based on key selected */
        switch (keypadLetterGroup) {
            case 1:
                pattern = "^[A-Ca-c]";
                break;
            case 2:
                pattern = "^[D-Fd-f]";
                break;
            case 3:
                pattern = "^[G-Ig-i]";
                break;
            case 4:
                pattern = "^[J-Lj-l]";
                break;
            case 5:
                pattern = "^[M-Om-o]";
                break;
            case 6:
                pattern = "^[N-Qn-q]";
                break;
            case 7:
                pattern = "^[R-Tr-t]";
                break;
            case 8:
                pattern = "^[V-Xv-x]";
                break;
            case 9:
                pattern = "^[Y-Zy-z]";
                break;
            case 0:
            default:
                /* Select all data */
                pattern = "^[A-Za-z]";
                break;
        }
        return pattern;
    }
    
    /* Base class to hold state details */
    public static class StateDetails {
        private String name;
        private String capital;

        /* Constructor */
        public StateDetails(String name, String capital) {
            this.name = name;
            this.capital = capital;
        }

        /* Getter functions */
        public String getName() { return name; }
        public String getCapital() {return capital; }

        /* Setter functions */
        public void setName(String name) { this.name = name; }
        public void setCapital(String capital) { this.capital = capital; }
    }
}
