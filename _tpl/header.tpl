  <header class="clearfix">
    <ul class="nav-top">
      <li><a href="{{ $view->url(['controller' => 'user', 'action' => 'index'], 'default') }}" title="Community index">{{ #community# }}</a></li>
      {{ if !$gimme->user->logged_in}}
      <li><a href="{{ $view->url(['controller' => 'auth', 'action' =>'index'], 'default') }}"> {{ #login# }} </a></li>
      {{ else }}
      <li><a href="{{ $view->url(['controller' => 'auth', 'action' =>'logout'], 'default') }}">{{ #logout# }}</a></li>
      {{ /if }}
    </ul>

    <a class="logo-alpha" href="http://{{ $gimme->publication->site }}">Tommy</a></h1>

    <a href="#body" class="nav-link nav-link-open"> {{ #sections# }}</a>
    <a href="#" class="nav-link nav-link-close"> {{ #sections# }}</a>

    {{ search_form template="search.tpl" submit_button="Search" html_code="role=\"search\" class=\"search-field-alpha\""}}
      <label class="acc" for="f_search_keywords">{{ #search# }}</label>
      <input classs="inp-f" id="f_search_keywords" type="search" required aria-required="true" placeholder="{{ #keywords# }}" name="f_search_keywords">
    {{ /search_form }}

    
    <nav id="nav-top" class="nav-alpha nav">
      <ul>
        <li{{ if $gimme->template->name == "front.tpl" }} class="nav-current"{{ /if }}><a href="/">{{ #home# }}</a></li>
        {{ local }}
        {{ set_current_issue }}
        {{ list_sections }}
          <li{{ if ($gimme->section->number == $gimme->default_section->number) && ($gimme->template->name == "section.tpl" || $gimme->template->name == "article.tpl") }} class="nav-current"{{ /if }}><a href="{{ uri options="section" }}" title="{{ #allPostsUnder# }} {{ $gimme->section->name }}">{{ $gimme->section->name }}</a></li>
        {{ /list_sections }}
        {{ /local }}     
        </ul>
    </nav>
</header>