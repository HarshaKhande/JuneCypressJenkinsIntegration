export default class SearchPage {
    private readonly CSS_RESULT_SEARCH = '#react-layout [data-testid="mainline"]'

    resultContain(callback: (text: string) => void): void {
        cy.get(this.CSS_RESULT_SEARCH, { timeout: 40000 }).then(($elem) => {
            callback($elem.text())
        })
    }
}
