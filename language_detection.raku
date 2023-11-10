# create a new var using filename to hold the stopwords...
my @stopwords_langs;

my $string_to_use = "Put your string here.";

for dir('stopwords') -> $file {
    my $n = $file;
    $n = substr $n, 0, rindex( $n, q{.} );
    $n = $n.split("/",:skip-empty);
    # weed out any Nil values
    if  $n[1] {
        @stopwords_langs.push: $n[1];
        }
    }

# Loading our stopwords arrays
my @arabic_stopwords;
my @azerbaijani_stopwords;
my @basque_stopwords;
my @bengali_stopwords;
my @catalan_stopwords;
my @chinese_stopwords;
my @danish_stopwords;
my @dutch_stopwords;
my @english_stopwords;
my @finnish_stopwords;
my @french_stopwords;
my @german_stopwords;
my @greek_stopwords;
my @hebrew_stopwords;
my @hinglish_stopwords;
my @hungarian_stopwords;
my @indonesian_stopwords;
my @italian_stopwords;
my @kazakh_stopwords;
my @nepali_stopwords;
my @norwegian_stopwords;
my @portuguese_stopwords;
my @romanian_stopwords;
my @russian_stopwords;
my @slovene_stopwords;
my @spanish_stopwords;
my @swedish_stopwords;
my @tajik_stopwords;
my @turkish_stopwords;

# building our stopwords language list from filenames in the stopwords directory
my @list_of_fnames;

for @stopwords_langs {
    my $stopword_lang_fname = $_;
    @list_of_fnames.push: $stopword_lang_fname ~ '.txt';
}

# going through files and pushing words to our stopwords lists...
for @list_of_fnames {
    my $cur_fname = $_;
    if $cur_fname.contains("arabic") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @arabic_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("azerbaijani") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @azerbaijani_stopwords.push: "$_";
        }
    }
    if $cur_fname.contains("basque") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @basque_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("bengali") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @bengali_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("catalan") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @catalan_stopwords.push: "$_";
        }
    }
    if $cur_fname.contains("chinese") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @chinese_stopwords.push: "$_";
        }
    }
    if $cur_fname.contains("danish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @danish_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("dutch") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @dutch_stopwords.push: "$_";
        }
    }           
    if $cur_fname.contains("english") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @english_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("finnish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @finnish_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("french") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @french_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("german") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @german_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("greek") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @greek_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("hebrew") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @hebrew_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("hinglish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @hinglish_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("hungarian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @hungarian_stopwords.push: "$_";
        }
    }   
    if $cur_fname.contains("indonesian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @indonesian_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("italian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @italian_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("kazakh") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @kazakh_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("nepali") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @nepali_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("norwegian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @norwegian_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("portuguese") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @portuguese_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("romanian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @romanian_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("russian") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @russian_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("slovene") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @slovene_stopwords.push: "$_";
        }
    } 
    if $cur_fname.contains("spanish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @spanish_stopwords.push: "$_";
        }
    }  
    if $cur_fname.contains("swedish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @swedish_stopwords.push: "$_";
        }
    }   
    if $cur_fname.contains("tajik") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @tajik_stopwords.push: "$_";
        }
    }    
    if $cur_fname.contains("turkish") {
            for ("stopwords/" ~ $cur_fname).IO.lines {
            @turkish_stopwords.push: "$_";
        }
    }
}

# building a list of our stopwords lists
my @list_of_stopwords_lists;
@list_of_stopwords_lists.push: @arabic_stopwords, @azerbaijani_stopwords, @basque_stopwords,
    @bengali_stopwords, @catalan_stopwords, @chinese_stopwords, @danish_stopwords, @dutch_stopwords,
    @english_stopwords, @finnish_stopwords, @french_stopwords, @german_stopwords, @greek_stopwords,
    @hebrew_stopwords, @hinglish_stopwords, @hungarian_stopwords, @indonesian_stopwords,
    @italian_stopwords, @kazakh_stopwords, @nepali_stopwords, @norwegian_stopwords,
    @portuguese_stopwords, @romanian_stopwords, @russian_stopwords, @slovene_stopwords,
    @spanish_stopwords, @swedish_stopwords, @tajik_stopwords, @turkish_stopwords;

# defining our lists of stopwords detected in the string 
my @found_arabic_stopwords;
my @found_azerbaijani_stopwords;
my @found_basque_stopwords;
my @found_bengali_stopwords;
my @found_catalan_stopwords;
my @found_chinese_stopwords;
my @found_danish_stopwords;
my @found_dutch_stopwords;
my @found_english_stopwords;
my @found_finnish_stopwords;
my @found_french_stopwords;
my @found_german_stopwords;
my @found_greek_stopwords;
my @found_hebrew_stopwords;
my @found_hinglish_stopwords;
my @found_hungarian_stopwords;
my @found_indonesian_stopwords;
my @found_italian_stopwords;
my @found_kazakh_stopwords;
my @found_nepali_stopwords;
my @found_norwegian_stopwords;
my @found_portuguese_stopwords;
my @found_romanian_stopwords;
my @found_russian_stopwords;
my @found_slovene_stopwords;
my @found_spanish_stopwords;
my @found_swedish_stopwords;
my @found_tajik_stopwords;
my @found_turkish_stopwords;

# check a string's words against our lists of stopwords to calculate how many words the string shares with
# each language
my $user_string_length;
my @list_of_found_stopwords_lists;
my @list_of_detected_languages;
my @percentage_list;
my @final_percentages;

sub check_string($user_string) {
    my @length_of_string = $user_string.split(" ",:skip-empty);
    $user_string_length = @length_of_string.elems();

    for @length_of_string {
        my $cur_string = $_;
        if grep $cur_string, @arabic_stopwords {
            @found_arabic_stopwords.push: $cur_string; }
        if grep $cur_string, @azerbaijani_stopwords {
            @found_azerbaijani_stopwords.push: $cur_string; }
        if grep $cur_string, @azerbaijani_stopwords {
            @found_azerbaijani_stopwords.push: $cur_string; }
        if grep $cur_string, @basque_stopwords {
            @found_basque_stopwords.push: $cur_string; }
        if grep $cur_string, @bengali_stopwords {
            @found_bengali_stopwords.push: $cur_string; }
        if grep $cur_string, @catalan_stopwords {
            @found_catalan_stopwords.push: $cur_string; }
        if grep $cur_string, @chinese_stopwords {
            @found_chinese_stopwords.push: $cur_string; }
        if grep $cur_string, @danish_stopwords {
            @found_danish_stopwords.push: $cur_string; }
        if grep $cur_string, @dutch_stopwords {
            @found_dutch_stopwords.push: $cur_string; }
        if grep $cur_string, @english_stopwords {
            @found_english_stopwords.push: $cur_string; }
        if grep $cur_string, @finnish_stopwords {
            @found_finnish_stopwords.push: $cur_string; }
        if grep $cur_string, @french_stopwords {
            @found_french_stopwords.push: $cur_string; }
        if grep $cur_string, @german_stopwords {
            @found_german_stopwords.push: $cur_string; }
        if grep $cur_string, @greek_stopwords {
            @found_greek_stopwords.push: $cur_string; }
        if grep $cur_string, @hebrew_stopwords {
            @found_hebrew_stopwords.push: $cur_string; }
        if grep $cur_string, @hinglish_stopwords {
            @found_hinglish_stopwords.push: $cur_string; }
        if grep $cur_string, @hungarian_stopwords {
            @found_hungarian_stopwords.push: $cur_string; }
        if grep $cur_string, @indonesian_stopwords {
            @found_indonesian_stopwords.push: $cur_string; }
        if grep $cur_string, @italian_stopwords {
            @found_italian_stopwords.push: $cur_string; }
        if grep $cur_string, @kazakh_stopwords {
            @found_kazakh_stopwords.push: $cur_string; }
        if grep $cur_string, @nepali_stopwords {
            @found_nepali_stopwords.push: $cur_string; }
        if grep $cur_string, @norwegian_stopwords {
            @found_norwegian_stopwords.push: $cur_string; }
        if grep $cur_string, @portuguese_stopwords {
            @found_portuguese_stopwords.push: $cur_string; }
        if grep $cur_string, @romanian_stopwords {
            @found_romanian_stopwords.push: $cur_string; }
        if grep $cur_string, @russian_stopwords {
            @found_russian_stopwords.push: $cur_string; }
        if grep $cur_string, @slovene_stopwords {
            @found_slovene_stopwords.push: $cur_string; }
        if grep $cur_string, @spanish_stopwords {
            @found_spanish_stopwords.push: $cur_string; }
        if grep $cur_string, @swedish_stopwords {
            @found_swedish_stopwords.push: $cur_string; }
        if grep $cur_string, @tajik_stopwords {
            @found_tajik_stopwords.push: $cur_string; }
        if grep $cur_string, @turkish_stopwords {
            @found_turkish_stopwords.push: $cur_string; }
        }


    @list_of_found_stopwords_lists.push: @found_arabic_stopwords, @found_azerbaijani_stopwords, @found_basque_stopwords,
        @found_bengali_stopwords, @found_catalan_stopwords, @found_chinese_stopwords, @found_danish_stopwords, @found_dutch_stopwords,
        @found_english_stopwords, @found_finnish_stopwords, @found_french_stopwords, @found_german_stopwords, @found_greek_stopwords,
        @found_hebrew_stopwords, @found_hinglish_stopwords, @found_hungarian_stopwords, @found_indonesian_stopwords,
        @found_italian_stopwords, @found_kazakh_stopwords, @found_nepali_stopwords, @found_norwegian_stopwords,
        @found_portuguese_stopwords, @found_romanian_stopwords, @found_russian_stopwords, @found_slovene_stopwords,
        @found_spanish_stopwords, @found_swedish_stopwords, @found_tajik_stopwords, @found_turkish_stopwords;


    if @found_arabic_stopwords {
        my $arabic_percentage = @found_arabic_stopwords.elems() / $user_string_length;
        say "Percentage match for Arabic: " ~ $arabic_percentage;
        my @temp_list;
        @temp_list.push("Arabic");
        @temp_list.push($arabic_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_azerbaijani_stopwords {
        my $azerbaijani_percentage = @found_azerbaijani_stopwords.elems() / $user_string_length;
        say "Percentage match for Azerbaijani: " ~ $azerbaijani_percentage;
        my @temp_list;
        @temp_list.push("Azerbaijani");
        @temp_list.push($azerbaijani_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_basque_stopwords {
        my $basque_percentage = @found_basque_stopwords.elems() / $user_string_length;
        say "Percentage match for Basque: " ~ $basque_percentage;
        my @temp_list;
        @temp_list.push("Basque");
        @temp_list.push($basque_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_bengali_stopwords {
        my $bengali_percentage = @found_bengali_stopwords.elems() / $user_string_length;
        say "Percentage match for Bengali: " ~ $bengali_percentage;
        my @temp_list;
        @temp_list.push("Bengali");
        @temp_list.push($bengali_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_catalan_stopwords {
        my $catalan_percentage = @found_catalan_stopwords.elems() / $user_string_length;
        say "Percentage match for Catalan: " ~ $catalan_percentage;
        my @temp_list;
        @temp_list.push("Catalan");
        @temp_list.push($catalan_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_chinese_stopwords {
        my $chinese_percentage = @found_chinese_stopwords.elems() / $user_string_length;
        say "Percentage match for Chinese: " ~ $chinese_percentage;
        my @temp_list;
        @temp_list.push("Chinese");
        @temp_list.push($chinese_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_danish_stopwords {
        my $danish_percentage = @found_danish_stopwords.elems() / $user_string_length;
        say "Percentage match for Danish: " ~ $danish_percentage;
        my @temp_list;
        @temp_list.push("Danish");
        @temp_list.push($danish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_dutch_stopwords {
        my $dutch_percentage = @found_dutch_stopwords.elems() / $user_string_length;
        say "Percentage match for Dutch: " ~ $dutch_percentage;
        my @temp_list;
        @temp_list.push("Dutch");
        @temp_list.push($dutch_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_english_stopwords {
        my $english_percentage = @found_english_stopwords.elems() / $user_string_length;
        say "Percentage match for English: " ~ $english_percentage;
        my @temp_list;
        @temp_list.push("English");
        @temp_list.push($english_percentage);
        @list_of_detected_languages.push(@temp_list);
        
    }
    if @found_finnish_stopwords {
        my $finnish_percentage = @found_finnish_stopwords.elems() / $user_string_length;
        say "Percentage match for Finnish: " ~ $finnish_percentage;
        my @temp_list;
        @temp_list.push("Finnish");
        @temp_list.push($finnish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_french_stopwords {
        my $french_percentage = @found_french_stopwords.elems() / $user_string_length;
        say "Percentage match for French: " ~ $french_percentage;
        my @temp_list;
        @temp_list.push("French");
        @temp_list.push($french_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_german_stopwords {
        my $german_percentage = @found_german_stopwords.elems() / $user_string_length;
        say "Percentage match for German: " ~ $german_percentage;
        my @temp_list;
        @temp_list.push("German");
        @temp_list.push($german_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_greek_stopwords {
        my $greek_percentage = @found_greek_stopwords.elems() / $user_string_length;
        say "Percentage match for Greek: " ~ $greek_percentage;
        my @temp_list;
        @temp_list.push("Greek");
        @temp_list.push($greek_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_hebrew_stopwords {
        my $hebrew_percentage = @found_hebrew_stopwords.elems() / $user_string_length;
        say "Percentage match for Hebrew: " ~ $hebrew_percentage;
        my @temp_list;
        @temp_list.push("Hebrew");
        @temp_list.push($hebrew_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_hinglish_stopwords {
        my $hinglish_percentage = @found_hinglish_stopwords.elems() / $user_string_length;
        say "Percentage match for Hinglish: " ~ $hinglish_percentage;
        my @temp_list;
        @temp_list.push("Hinglish");
        @temp_list.push($hinglish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_hungarian_stopwords {
        my $hungarian_percentage = @found_hungarian_stopwords.elems() / $user_string_length;
        say "Percentage match for Hungarian: " ~ $hungarian_percentage;
        my @temp_list;
        @temp_list.push("Hungarian");
        @temp_list.push($hungarian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_indonesian_stopwords {
        my $indonesian_percentage = @found_indonesian_stopwords.elems() / $user_string_length;
        say "Percentage match for Indonesian: " ~ $indonesian_percentage;
        my @temp_list;
        @temp_list.push("Indonesian");
        @temp_list.push($indonesian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_italian_stopwords {
        my $italian_percentage = @found_italian_stopwords.elems() / $user_string_length;
        say "Percentage match for Italian: " ~ $italian_percentage;
        my @temp_list;
        @temp_list.push("Italian");
        @temp_list.push($italian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_kazakh_stopwords {
        my $kazakh_percentage = @found_kazakh_stopwords.elems() / $user_string_length;
        say "Percentage match for Kazakh: " ~ $kazakh_percentage;
        my @temp_list;
        @temp_list.push("Kazakh");
        @temp_list.push($kazakh_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_nepali_stopwords {
        my $nepali_percentage = @found_nepali_stopwords.elems() / $user_string_length;
        say "Percentage match for Nepali: " ~ $nepali_percentage;
        my @temp_list;
        @temp_list.push("Nepali");
        @temp_list.push($nepali_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_norwegian_stopwords {
        my $norwegian_percentage = @found_norwegian_stopwords.elems() / $user_string_length;
        say "Percentage match for Norwegian: " ~ $norwegian_percentage;
        my @temp_list;
        @temp_list.push("Norwegian");
        @temp_list.push($norwegian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_portuguese_stopwords {
        my $portuguese_percentage = @found_portuguese_stopwords.elems() / $user_string_length;
        say "Percentage match for Portuguese: " ~ $portuguese_percentage;
        my @temp_list;
        @temp_list.push("Portuguese");
        @temp_list.push($portuguese_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_romanian_stopwords {
        my $romanian_percentage = @found_romanian_stopwords.elems() / $user_string_length;
        say "Percentage match for Romanian: " ~ $romanian_percentage;
        my @temp_list;
        @temp_list.push("Romanian");
        @temp_list.push($romanian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_russian_stopwords {
        my $russian_percentage = @found_russian_stopwords.elems() / $user_string_length;
        say "Percentage match for Russian: " ~ $russian_percentage;
        my @temp_list;
        @temp_list.push("Russian");
        @temp_list.push($russian_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_slovene_stopwords {
        my $slovene_percentage = @found_slovene_stopwords.elems() / $user_string_length;
        say "Percentage match for Slovene: " ~ $slovene_percentage;
        my @temp_list;
        @temp_list.push("Slovene");
        @temp_list.push($slovene_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_spanish_stopwords {
        my $spanish_percentage = @found_spanish_stopwords.elems() / $user_string_length;
        say "Percentage match for Spanish: " ~ $spanish_percentage;
        my @temp_list;
        @temp_list.push("Spanish");
        @temp_list.push($spanish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_swedish_stopwords {
        my $swedish_percentage = @found_swedish_stopwords.elems() / $user_string_length;
        say "Percentage match for Swedish: " ~ $swedish_percentage;
        my @temp_list;
        @temp_list.push("Swedish");
        @temp_list.push($swedish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_tajik_stopwords {
        my $tajik_percentage = @found_tajik_stopwords.elems() / $user_string_length;
        say "Percentage match for Tajik: " ~ $tajik_percentage;
        my @temp_list;
        @temp_list.push("Tajik");
        @temp_list.push($tajik_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    if @found_turkish_stopwords {
        my $turkish_percentage = @found_turkish_stopwords.elems() / $user_string_length;
        say "Percentage match for Turkish: " ~ $turkish_percentage;
        my @temp_list;
        @temp_list.push("Turkish");
        @temp_list.push($turkish_percentage);
        @list_of_detected_languages.push(@temp_list);
    }
    
    # weeding out empty values 
    for @list_of_detected_languages {
        if $_[1] {
            @percentage_list.append($_[1];)
        }
    }

    for @percentage_list {
        if $_ {
            @final_percentages.push($_);
        }
    }

    my $top_val = ~@percentage_list.max();

    my @matching_indices_list = @final_percentages.grep($top_val, :k);

    for @matching_indices_list {
        say "Best prediction(s): " ~@list_of_detected_languages[$_];
    }
}

check_string($string_to_use);
