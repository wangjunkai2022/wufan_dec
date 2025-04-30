package com.papa91.arc.util;

import com.j256.ormlite.stmt.query.SimpleComparison;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes4.dex */
public class IniFile {
    private String charSet;
    private File file;
    private String line_separator;
    private Map<String, Section> sections;

    /* loaded from: classes4.dex */
    public class Section {
        private String name;
        private Map<String, Object> values = new LinkedHashMap();

        public Section() {
        }

        public Object get(String str) {
            return this.values.get(str);
        }

        public String getName() {
            return this.name;
        }

        public Map<String, Object> getValues() {
            return this.values;
        }

        public void set(String str, Object obj) {
            this.values.put(str, obj);
        }

        public void setName(String str) {
            this.name = str;
        }
    }

    public IniFile() {
        this.line_separator = null;
        this.charSet = "UTF-8";
        this.sections = new LinkedHashMap();
        this.file = null;
    }

    private void initFromFile(File file) {
        try {
            toIniFile(new BufferedReader(new FileReader(file)));
        } catch (FileNotFoundException e4) {
            e4.printStackTrace();
        }
    }

    private void initFromInputStream(InputStream inputStream) {
        try {
            toIniFile(new BufferedReader(new InputStreamReader(inputStream, this.charSet)));
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
    }

    private void saveConfig(BufferedWriter bufferedWriter) {
        boolean z3 = false;
        try {
            String str = this.line_separator;
            if (str != null && !str.trim().equals("")) {
                z3 = true;
            }
            for (Section section : this.sections.values()) {
                bufferedWriter.write("[" + section.getName() + "]");
                if (z3) {
                    bufferedWriter.write(this.line_separator);
                } else {
                    bufferedWriter.newLine();
                }
                for (Map.Entry<String, Object> entry : section.getValues().entrySet()) {
                    bufferedWriter.write(entry.getKey());
                    bufferedWriter.write(SimpleComparison.EQUAL_TO_OPERATION);
                    bufferedWriter.write(entry.getValue().toString());
                    if (z3) {
                        bufferedWriter.write(this.line_separator);
                    } else {
                        bufferedWriter.newLine();
                    }
                }
            }
            bufferedWriter.close();
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    private void toIniFile(BufferedReader bufferedReader) {
        Pattern compile = Pattern.compile("^\\[.*\\]$");
        Section section = null;
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    if (compile.matcher(readLine).matches()) {
                        String trim = readLine.trim();
                        Section section2 = new Section();
                        section2.name = trim.substring(1, trim.length() - 1);
                        this.sections.put(section2.name, section2);
                        section = section2;
                    } else {
                        String[] split = readLine.split(SimpleComparison.EQUAL_TO_OPERATION);
                        if (split.length == 2) {
                            section.set(split[0], split[1]);
                        }
                    }
                } else {
                    bufferedReader.close();
                    return;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
                return;
            }
        }
    }

    public Section get(String str) {
        return this.sections.get(str);
    }

    public void load(File file) {
        this.file = file;
        initFromFile(file);
    }

    public void remove(String str) {
        this.sections.remove(str);
    }

    public void save(OutputStream outputStream) {
        try {
            saveConfig(new BufferedWriter(new OutputStreamWriter(outputStream, this.charSet)));
        } catch (UnsupportedEncodingException e4) {
            e4.printStackTrace();
        }
    }

    public void set(String str, String str2, Object obj) {
        Section section = this.sections.get(str);
        if (section == null) {
            section = new Section();
        }
        section.name = str;
        section.set(str2, obj);
        this.sections.put(str, section);
    }

    public void setCharSet(String str) {
        this.charSet = str;
    }

    public void setLineSeparator(String str) {
        this.line_separator = str;
    }

    public Object get(String str, String str2) {
        return get(str, str2, null);
    }

    public void remove(String str, String str2) {
        Section section = this.sections.get(str);
        if (section != null) {
            section.getValues().remove(str2);
        }
    }

    public Object get(String str, String str2, String str3) {
        Section section = this.sections.get(str);
        if (section != null) {
            Object obj = section.get(str2);
            return (obj == null || obj.toString().trim().equals("")) ? str3 : obj;
        }
        return null;
    }

    public void load(InputStream inputStream) {
        initFromInputStream(inputStream);
    }

    public void save(File file) {
        if (file == null) {
            return;
        }
        try {
            saveConfig(new BufferedWriter(new FileWriter(file)));
        } catch (IOException e4) {
            e4.printStackTrace();
        }
    }

    public IniFile(File file) {
        this.line_separator = null;
        this.charSet = "UTF-8";
        this.sections = new LinkedHashMap();
        this.file = null;
        this.file = file;
        initFromFile(file);
    }

    public void save() {
        save(this.file);
    }

    public IniFile(InputStream inputStream) {
        this.line_separator = null;
        this.charSet = "UTF-8";
        this.sections = new LinkedHashMap();
        this.file = null;
        initFromInputStream(inputStream);
    }
}
