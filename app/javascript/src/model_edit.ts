document.addEventListener('turbolinks:load', () => {
  window.tagInputs = []
  $('input[data-tags-edit]').each(
    function () {
      const tagInput = $(this).selectize({
        create: true,
        sortField: 'text'
      })
      window.tagInputs.push(tagInput)
    }
  )
})