require "application_system_test_case"

class IncidencesTest < ApplicationSystemTestCase
  setup do
    @incidence = incidences(:one)
  end

  test "visiting the index" do
    visit incidences_url
    assert_selector "h1", text: "Incidences"
  end

  test "creating a Incidence" do
    visit incidences_url
    click_on "New Incidence"

    fill_in "Descripcion", with: @incidence.descripcion
    fill_in "Fecha solucion", with: @incidence.fecha_solucion
    click_on "Create Incidence"

    assert_text "Incidence was successfully created"
    click_on "Back"
  end

  test "updating a Incidence" do
    visit incidences_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @incidence.descripcion
    fill_in "Fecha solucion", with: @incidence.fecha_solucion
    click_on "Update Incidence"

    assert_text "Incidence was successfully updated"
    click_on "Back"
  end

  test "destroying a Incidence" do
    visit incidences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Incidence was successfully destroyed"
  end
end
