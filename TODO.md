# TODO

* [ ] After a clear, stop scrolling when reached clear point
* [X] Issue with foreground being the same color as background
* [ ] Fix the headers 😠
* [ ] underline
    * [X] Color
    * [X] Underdash
    * [X] Underdot
    * [X] Undercurl
    * [X] Underdouble
        * [X] Fix transparency issues with color
    * [ ] Underline style doesn't get reset properly. `printf '\033[4:3am\033[4:1bm'`:
        * expected: [undercurl]a [underline]b
        * actual: [undercurl]ab
* [ ] Performance isn't very good 🙁
