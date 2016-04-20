String home="/Users/tawwaak.bkf/Documents/Files/";
String regi_nev= "file";
String uj_nev= "korte";

for (int x=0; x<6; x++) {
  File ff = new File(home+regi_nev+x);
  ff.renameTo(new File(home+uj_nev+x));
}