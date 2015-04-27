# MathJax implementation from reed.github.io/turbolinks-compatability/mathjax.html
$ ->
  loadMathJax()
  $(document).on 'page:load', loadMathJax

loadMathJax = ->
  window.MathJax = null
  $.getScript "http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML", ->
    MathJax.Hub.Config
      showMathMenu: false
      tex2jax: {inlineMath: [['$', '$'], ['\\(','\\)']]}
